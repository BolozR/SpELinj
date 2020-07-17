package ai.hacktory.spel.service.transfer;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import ai.hacktory.spel.service.models.User;

@Data
@AllArgsConstructor
@Builder
public class UserDto {
    private String firstName;
    private String lastName;

    public static UserDto from(User user){
        return UserDto.builder()
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .build();
    }
}
