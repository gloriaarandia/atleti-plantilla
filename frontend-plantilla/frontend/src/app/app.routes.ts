import { Routes } from '@angular/router';
import { Campo } from './pages/campo/campo';
import { Ficha } from './pages/ficha/ficha';
import { Plantilla } from './pages/plantilla/plantilla';


export const routes: Routes = [
    { path: '', component: Campo },
    { path: 'jugador/:id', component: Ficha },
    { path: 'plantilla', component: Plantilla },
];
