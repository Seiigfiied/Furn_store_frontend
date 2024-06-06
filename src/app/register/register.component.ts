import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import { UserService } from '../_services/user.service';
import { Router } from '@angular/router';
import { UserAuthService } from '../_services/user-auth.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css'],
})
export class RegisterComponent {
  constructor(private userService: UserService, private router: Router) {}

  register(registerForm: NgForm) {
    this.userService.register(registerForm.value).subscribe(
      (response) => {
        this.router.navigate(['/login']);
        console.log(response);
      },
      (error) => {
        console.log(error);
      }
    );
  }
}
