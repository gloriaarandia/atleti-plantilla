import { TestBed } from '@angular/core/testing';
import { PlantillaApi } from './plantilla-api';

describe('PlantillaApi', () => {
  let service: PlantillaApi;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(PlantillaApi);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
