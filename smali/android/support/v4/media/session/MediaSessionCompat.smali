.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/view/ViewParent;

.field private c:Z

.field private d:[I

.field private e:Landroid/support/v4/app/q;

.field private f:[Lcom/google/android/gms/ads/b;

.field private g:Ljava/lang/String;

.field private h:Landroid/support/v7/app/h;

.field private i:Landroid/support/v7/app/h;

.field private j:Landroid/support/v7/app/h;

.field private k:Z


# virtual methods
.method public a(Landroid/support/v4/app/q;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->e:Landroid/support/v4/app/q;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Landroid/support/v4/app/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/app/h;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->h:Landroid/support/v7/app/h;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Landroid/support/v4/app/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/aa;->p(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Z

    return-void
.end method

.method public varargs a([Lcom/google/android/gms/ads/b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->f:[Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->b([Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Z

    return v0
.end method

.method public a(FF)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/aG;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FFZ)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/aG;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/aG;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/aG;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII[I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-eqz p5, :cond_4

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, p5, v7

    aget v0, p5, v9

    move v6, v0

    move v8, v1

    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/aG;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    if-eqz p5, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p5, v7

    sub-int/2addr v0, v8

    aput v0, p5, v7

    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    :cond_1
    move v7, v9

    :cond_2
    :goto_1
    return v7

    :cond_3
    if-eqz p5, :cond_2

    aput v7, p5, v7

    aput v7, p5, v9

    goto :goto_1

    :cond_4
    move v6, v7

    move v8, v7

    goto :goto_0
.end method

.method public a(II[I[I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    if-eqz p2, :cond_6

    :cond_0
    if-eqz p4, :cond_7

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v0

    aget v2, p4, v1

    :goto_0
    if-nez p3, :cond_2

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat;->d:[I

    if-nez v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat;->d:[I

    :cond_1
    iget-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat;->d:[I

    :cond_2
    aput v0, p3, v0

    aput v0, p3, v1

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/aG;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    if-eqz p4, :cond_3

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p4, v0

    sub-int v3, v4, v3

    aput v3, p4, v0

    aget v3, p4, v1

    sub-int v2, v3, v2

    aput v2, p4, v1

    :cond_3
    aget v2, p3, v0

    if-nez v2, :cond_4

    aget v2, p3, v1

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    return v0

    :cond_6
    if-eqz p4, :cond_5

    aput v0, p4, v0

    aput v0, p4, v1

    goto :goto_1

    :cond_7
    move v2, v0

    move v3, v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/app/h;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->i:Landroid/support/v7/app/h;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Landroid/support/v4/app/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->k:Z

    return-void
.end method

.method public varargs b([Lcom/google/android/gms/ads/b;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->f:[Lcom/google/android/gms/ads/b;

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/aG;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/view/ViewParent;

    :cond_0
    return-void
.end method

.method public c(Landroid/support/v7/app/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->j:Landroid/support/v7/app/h;

    return-void
.end method

.method public d()Landroid/support/v4/app/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->e:Landroid/support/v4/app/q;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/ads/b;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->f:[Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->f:[Lcom/google/android/gms/ads/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()[Lcom/google/android/gms/ads/b;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->f:[Lcom/google/android/gms/ads/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/support/v7/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->h:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public i()Landroid/support/v7/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->i:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public j()Landroid/support/v7/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->j:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
