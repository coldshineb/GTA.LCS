.class final Landroid/support/v4/app/af;
.super Landroid/support/v4/app/ac;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;
    .locals 6

    iget-object v0, p1, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p1, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget v1, p1, Landroid/support/v4/app/Z;->f:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object v0
.end method
