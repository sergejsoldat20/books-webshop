package web.books.models.requests;

import lombok.Data;

@Data
public class RegisterRequest {
    private String firstName;
    private String lastName;
    private String gender;
    private String email;
    private String username;
    private String password;
    private String role;
    private Boolean accountConfirmed;
    private String phoneNumber;
}