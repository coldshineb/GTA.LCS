.class public Landroid/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/net/Uri;

.field private g:Landroid/os/Bundle;

.field private h:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 10

    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat;->c:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat;->d:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat;->e:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat;->f:Landroid/net/Uri;

    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserCompat;->g:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowserCompat;->h:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;B)V

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->h:Landroid/net/Uri;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
