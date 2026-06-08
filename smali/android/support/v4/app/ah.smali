.class final Landroid/support/v4/app/ah;
.super Landroid/support/v4/app/ac;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;
    .locals 14

    new-instance v0, Landroid/support/v4/app/ap;

    iget-object v1, p1, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    iget-object v3, p1, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/Z;->e:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p1, Landroid/support/v4/app/Z;->h:I

    iget v12, p1, Landroid/support/v4/app/Z;->i:I

    iget-boolean v13, p1, Landroid/support/v4/app/Z;->j:Z

    invoke-direct/range {v0 .. v13}, Landroid/support/v4/app/ap;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    invoke-interface {v0}, Landroid/support/v4/app/U;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
