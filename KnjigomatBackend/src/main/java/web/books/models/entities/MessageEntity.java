package web.books.models.entities;

import jakarta.persistence.*;
import lombok.*;
import web.books.base.BaseEntity;

import java.sql.Timestamp;

@Data
@Entity
@Table(name = "message")
public class MessageEntity implements BaseEntity<Integer> {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id@Column(name = "id")
    private Integer id;
    @Basic@Column(name = "text")
    private String text;
    @Basic@Column(name = "created_time")
    private Timestamp createdTime;
    @Basic@Column(name = "chat_id")
    private String chatId;
    @Basic@Column(name = "sender_id")
    private Integer senderId;
    @Basic@Column(name = "receiver_id")
    private Integer receiverId;
   /* @ManyToOne
    @JoinColumn(name = "receiver_id", referencedColumnName = "id", nullable = false)
    private UserEntity receiver;
    @ManyToOne
    @JoinColumn(name = "sender_id", referencedColumnName = "id", nullable = false)
    private UserEntity sender;*/

}
