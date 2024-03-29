/* eslint-disable no-unused-vars */
import React, { useState, useEffect } from "react";
import chatService from "../services/chatService";
import userService from "../services/userService";
import ChatList from "../components/ChatUsersComponent";
import Chat from "../components/Chat";
import { Grid } from "@mui/material";
export default function FullChat() {
  const [messages, setMessages] = useState([]);
  const [chatUsers, setChatUsers] = useState([]);
  const [receiverId, setReceiverId] = useState(0);

  useEffect(() => {
    const intervalId = setInterval(() => {
      // Fetch new messages from your backend API or WebSocket server here
      loadMessages();
    }, 500); // Fetch messages every second

    return () => {
      clearInterval(intervalId);
    };
  }, [receiverId]);

  useEffect(() => {
    loadChatUsers();
  }, []);

  const loadMessages = () => {
    if (receiverId !== 0) {
      chatService.getChatMessages(receiverId).then((result) => {
        console.log(result.data);
        setMessages(result.data);
      });
    }
  };

  const loadChatUsers = () => {
    chatService.getChatUsers().then((result) => {
      setChatUsers(result.data);
    });
  };

  const onSelectUser = (userId) => {
    setReceiverId(userId);
    console.log(userId + "User ID");
  };
  return (
    <Grid alignItems="center" justifyContent="center" className="text-center">
      <div className="container">
        <div className="rom">
          <div className="col-md-8 offset-md-2 border rounder p-4 mt-2 shadow">
            <h2 className="text-center m-4">Razgovori</h2>

            <div className="card">
              <div className="card-header">
                <div className="row">
                  <ChatList
                    users={chatUsers}
                    onSelectUser={onSelectUser}
                    receiverId={receiverId}
                  />
                  <Chat messages={messages} receiverId={receiverId} />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Grid>
  );
}
