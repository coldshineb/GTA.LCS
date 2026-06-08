.class Landroid/support/v4/app/aj;
.super Landroid/support/v4/app/ai;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;
    .locals 25

    new-instance v1, Landroid/support/v4/app/as;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/Z;->e:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/Z;->h:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/Z;->i:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/Z;->j:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/Z;->g:Z

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->f:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->q:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v1 .. v24}, Landroid/support/v4/app/as;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->k:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Landroid/support/v4/app/T;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Landroid/support/v4/app/U;Landroid/support/v4/app/ak;)V

    invoke-interface {v1}, Landroid/support/v4/app/U;->b()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
