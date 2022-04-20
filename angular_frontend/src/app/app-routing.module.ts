import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { BookinglistComponent } from './bookinglist/bookinglist.component';

const routes: Routes = [
  { path: '', redirectTo: '/booking', pathMatch: 'full' },
  {path:'booking',component:BookinglistComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
