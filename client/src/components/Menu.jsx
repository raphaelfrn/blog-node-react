import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link } from "react-router-dom";


export const Menu = ({cat, currentPostId}) => {

  const [posts, setPosts] = useState([]);
  

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await axios.get(`http://localhost:8800/api/posts/?cat=${cat}`);
        // Filter out the current post from the recommendations
        const filteredPosts = res.data.filter(post => post.id !== currentPostId);
        setPosts(filteredPosts);
      } catch (err) {
        console.log(err);
      }
    };
    fetchData();
  }, [cat, currentPostId]);
  
  
  return (
    <div className='menu'>
        <h1>Other posts you may like</h1>
    {posts.map(post=>(
      <div className="post" key={post.id}>
            <img src={`../upload/${post.img}`} alt="" />
            <h2>{post.title}</h2>
            <Link className="link" to={`/post/${post.id}`}>
            <button>Read more</button>
            </Link>
        </div>
    ))}
    </div>
  )
}


export default Menu;