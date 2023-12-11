import React, { useEffect, useState } from "react";
import Edit from "../img/edit.png";
import Delete from "../img/delete.png";
import { Link, useLocation, useNavigate } from "react-router-dom";
import Menu from "../components/Menu";
import axios from "axios";
import moment from "moment";
import { useContext } from "react";
import { AuthContext } from "../context/authContext";
import DOMPurify from "dompurify";


const Single = () => {

    const [post, setPost] = useState({});
    const [showDeleteModal, setShowDeleteModal] = useState(false);

    const location = useLocation();
    const navigate = useNavigate();

    // to get only the id from the url
    const postId = location.pathname.split("/")[2];

    // get info from user logged in
    const { currentUser } = useContext(AuthContext);

    useEffect(() => {
        const fetchData = async () => {
          try {
            const res = await axios.get(`http://localhost:8800/api/posts/${postId}`);
            setPost(res.data);
          } catch (err) {
            console.log(err);
          }
        };
        fetchData();
      }, [postId]);
    
      const openModal = () => {
        setShowDeleteModal(true);
      };

    const handleDelete = async ()=>{
        try {
          await axios.delete(`http://localhost:8800/api/posts/${postId}`, { withCredentials: true });
          navigate("/")
        } catch (err) {
          console.log(err);
        }
      }

      return (
        <div className="single">
          <div className="content">
            <img src={`../upload/${post?.img}`} alt="" />
            <div className="user">
              {post.userImg && <img
                src={post.userImg}
                alt=""
              />}
              <div className="info">
                <span>{post.username}</span>
                <p>Posted {moment(post.date).fromNow()}</p>
              </div>
              {currentUser && currentUser.username === post.username && (
                <div className="edit">
                  <Link to={`/write?edit=2`} state={post}>
                    <img src={Edit} alt="" />
                  </Link>
                  <img onClick={openModal} src={Delete} alt="" />
                    
                </div>
              )}
            </div>
            <h1>{post.title}</h1>
            <p
              dangerouslySetInnerHTML={{
                __html: DOMPurify.sanitize(post.desc),
              }}
            ></p>      </div>
        
            {showDeleteModal && (
            <div className="delete-modal">
              <p>Êtes-vous sûr de vouloir supprimer ce post ?</p>
              <button onClick={handleDelete}>Oui, supprimer</button>
              <button onClick={() => setShowDeleteModal(false)}>Annuler</button>
            </div>
          )}
          <Menu cat={post.cat}/>
        </div>
      );
    };
    
    export default Single;