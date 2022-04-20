import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { environment } from '../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class BookingserviceService {

  constructor(private http:HttpClient) { }

  postApi(url:any,data:any):Observable<any>{
    return this.http.post(environment.baseurl+url,data)
    
  }
  getApi(url:any):Observable<any>{
    return this.http.get(environment.baseurl+url)
  }

}
