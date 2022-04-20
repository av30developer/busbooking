import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { BookingserviceService } from '../bookingservice.service';

@Component({
  selector: 'app-bookinglist',
  templateUrl: './bookinglist.component.html',
  styleUrls: ['./bookinglist.component.css']
})
export class BookinglistComponent implements OnInit {
  completeData: any;
  newData: any = []
  completeArr: any = [];
  model: any = {}
  result: any;

  constructor(public service: BookingserviceService, public toaster: ToastrService) { }

  ngOnInit(): void {
    this.service.getApi('getlist').subscribe((res) => {
      this.completeData = res.response;
    })
  }
  checkNum(event: any) {
    if (event.keyCode >= 48 && event.keyCode <= 57) {
      console.log(event.keyCode)

    } else {
      this.toaster.error("You can only enter numeric value")

    }

  }
  getID(id: any) {
    console.log(id)

  }
  bookSeat() {
    if (Object.keys(this.model).length > 0) {
      if (this.model.no_of_seat > '7' || this.model.no_of_seat == '3' || this.model.no_of_seat == '5') {
        this.toaster.error("You can only book 7 seat at a time and Enter at least 2 seat or 4 or 6 or 1")
      } else {
        this.service.postApi("bookseat", this.model).subscribe((res) => {
          this.result = res.response
          if (this.result.length == 0) {
            this.toaster.error("Oops No Seat is Available !")
          } else {
            this.result = res.response
            this.ngOnInit();
          }

        })

      }
    } else {
      this.toaster.error("Please enter how many seats do you want to book? ")
    }


  }

}
