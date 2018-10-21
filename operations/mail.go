package operations

import (
	"fmt"

	"log"

	mailgun "github.com/mailgun/mailgun-go"
)

func SendMailPass(email string) {

	println("sending the message")

	sender := "postmaster@sandbox2c4eef234821463a8fb294cea5ab11bb.mailgun.org"

	receiverString := email

	mg := mailgun.NewMailgun("sandbox2c4eef234821463a8fb294cea5ab11bb.mailgun.org", "a527a67d802dd9016a5fdaa8ab85a63f-a3d67641-ad015044", "pubkey-a6629f6402b39ed733b3a3fe4e2c4f5b")

	sendMessage(mg, sender, "Confirm mail", "SUCCESS", receiverString)

}

func sendMessage(mg mailgun.Mailgun, sender, subject, body, recipient string) {

	message := mg.NewMessage(sender, subject, body, recipient)

	resp, id, err := mg.Send(message)

	if err != nil {

		log.Fatal(err)

	}

	fmt.Printf("ID: %s Resp: %s\n", id, resp)

}
