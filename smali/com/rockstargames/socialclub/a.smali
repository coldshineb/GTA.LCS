.class final Lcom/rockstargames/socialclub/a;
.super Landroid/os/CountDownTimer;


# instance fields
.field private synthetic a:Lcom/rockstargames/socialclub/SocialClubActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/socialclub/SocialClubActivity;JJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    iput-object p1, p0, Lcom/rockstargames/socialclub/a;->a:Lcom/rockstargames/socialclub/SocialClubActivity;

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/socialclub/a;->a:Lcom/rockstargames/socialclub/SocialClubActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rockstargames/socialclub/SocialClubActivity;->access$002(Lcom/rockstargames/socialclub/SocialClubActivity;Z)Z

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
