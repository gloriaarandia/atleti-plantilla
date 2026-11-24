import { Routes } from '@angular/router';
import { Campo } from './pages/campo/campo';
import { Ficha } from './pages/ficha/ficha';


export const routes: Routes = [
    { path: '', component: Campo },
    { path: 'jugador/:id', component: Ficha },
];
