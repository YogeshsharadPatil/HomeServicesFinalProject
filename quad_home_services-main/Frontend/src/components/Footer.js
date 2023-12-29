import React from "react";
import {
  Box,
  Container,
  Row,
  Column,
  FooterLink,
  Heading
} from "./FooterStyles";
const Footer = () => {
  return (
    <Box>
      <Container>
        <Row>
          <Column>
            <Heading>Information</Heading>
            <FooterLink href="/about-us">About Us</FooterLink>
            <FooterLink href="#">Privacy Policy</FooterLink>
          </Column>
          <Column>
            <Heading>Contact</Heading>
            <FooterLink href="/contactus">Contact Us</FooterLink>
            <FooterLink href="/home">FAQs</FooterLink>
            <FooterLink href="/home">Refund Policy</FooterLink>
            <FooterLink href="/home">Cancellation Policy</FooterLink>
          </Column>
       
          <Column>
            <Heading>Social Media</Heading>
            <FooterLink href="https://www.facebook.com/login/">
              <i className="fab fa-facebook-f">
                <span style={{ marginLeft: "10px" }}>Facebook</span>
              </i>
            </FooterLink>
            <FooterLink href="https://www.instagram.com/accounts/login/">
              <i className="fab fa-instagram">
                <span style={{ marginLeft: "10px" }}>Instagram</span>
              </i>
            </FooterLink>
            <FooterLink href="https://twitter.com/i/flow/login">
              <i className="fab fa-twitter">
                <span style={{ marginLeft: "10px" }}>Twitter</span>
              </i>
            </FooterLink>
            <FooterLink href="https://www.youtube.com/">
              <i className="fab fa-youtube">
                <span style={{ marginLeft: "10px" }}>Youtube</span>
              </i>
            </FooterLink>
            
          </Column>
          <Column>
            <Heading>Developers</Heading>
            <FooterLink href="#">Mayur Mistari</FooterLink>
            <FooterLink href="#">Hashim Kazi</FooterLink>
            <FooterLink href="#">Swarup Nikam</FooterLink>
            <FooterLink href="#">Amar Patil</FooterLink>
          </Column>
        </Row>
        
      </Container>
    </Box>
  );
};
export default Footer;
