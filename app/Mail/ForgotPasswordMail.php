<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ForgotPasswordMail extends Mailable
{
    use Queueable, SerializesModels;

    public $user;
    public $orderUrl;

    /**
     * Create a new message instance.
     *
     * @param $user
     * @param $orderUrl
     */
    public function __construct($user)
    {
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('admin@school.com') // Replace with your actual email
                    ->subject('Forgot Password')
                    ->markdown('emails.forgot', [
                        'user' => $this->user,
                    ]);
    }

    public function attachments(): array
    {
        return [];
    }
}

