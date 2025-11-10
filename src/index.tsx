import TestRnLibrary from './NativeTestRnLibrary';

export function multiply(a: number, b: number): number {
  return TestRnLibrary.multiply(a, b);
}

export function sayHello(): string {
  return TestRnLibrary.sayHello();
}
