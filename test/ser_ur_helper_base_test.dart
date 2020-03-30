import 'package:ser_url_helper/ser_url_helper.dart';
import 'package:test/test.dart';


void main() {
  test('example.com', () =>
  expect(SerUrlHelper.fqdnUrl("example.com"), equals('https://www.example.com/')));
  test('subdomain.example.com', () =>
  expect(SerUrlHelper.fqdnUrl("subdomain.example.com"), equals('https://subdomain.example.com/')));
  test('www.example.com', () =>
  expect(SerUrlHelper.fqdnUrl("www.example.com"), equals('https://www.example.com/')));
  test('www.example.com//', () =>
  expect(SerUrlHelper.fqdnUrl("www.example.com/"), equals('https://www.example.com/')));
  test('example.com.tr', () =>
  expect(SerUrlHelper.fqdnUrl("example.com.tr"), equals('https://www.example.com.tr/')));
  test('subdomain.example.com.tr', () =>
  expect(SerUrlHelper.fqdnUrl("subdomain.example.com.tr"), equals('https://subdomain.example.com.tr/')));
}