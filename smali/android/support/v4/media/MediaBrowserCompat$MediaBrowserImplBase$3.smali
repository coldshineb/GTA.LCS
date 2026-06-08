.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Landroid/support/v4/os/ResultReceiver;


# virtual methods
.method protected final a(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez v0, :cond_0

    goto :goto_0
.end method
