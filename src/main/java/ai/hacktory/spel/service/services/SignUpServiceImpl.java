package ai.hacktory.spel.service.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ai.hacktory.spel.service.forms.UserForm;
import ai.hacktory.spel.service.models.Role;
import ai.hacktory.spel.service.models.State;
import ai.hacktory.spel.service.models.User;
import ai.hacktory.spel.service.repositories.UsersRepository;

@Service
public class SignUpServiceImpl implements SignUpService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void singUp(UserForm userForm) {
        String hashPassword = passwordEncoder.encode(userForm.getPassword());
        User user = User.builder()
                .firstName(userForm.getFirstName())
                .lastName(userForm.getLastName())
                .hashPassword(hashPassword)
                .login(userForm.getLogin())
                .role(Role.User)
                .state(State.Active)
                .build();

        usersRepository.save(user);
    }
}
