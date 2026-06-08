.class public final Landroid/support/v4/app/Z;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field public e:Ljava/lang/CharSequence;

.field f:I

.field g:Z

.field h:I

.field i:I

.field j:Z

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/W;",
            ">;"
        }
    .end annotation
.end field

.field l:Z

.field m:Ljava/lang/String;

.field n:I

.field o:I

.field public p:Landroid/app/Notification;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Z;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->k:Ljava/util/ArrayList;

    iput-boolean v4, p0, Landroid/support/v4/app/Z;->l:Z

    iput v4, p0, Landroid/support/v4/app/Z;->n:I

    iput v4, p0, Landroid/support/v4/app/Z;->o:I

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    iput-object p1, p0, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    iput v4, p0, Landroid/support/v4/app/Z;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->q:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method private static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v1, 0x1400

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    invoke-static {}, Landroid/support/v4/app/V;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/aa;

    invoke-direct {v1}, Landroid/support/v4/app/aa;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/ac;->a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/support/v4/app/Z;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public final a(IIZ)Landroid/support/v4/app/Z;
    .locals 1

    iput p1, p0, Landroid/support/v4/app/Z;->h:I

    iput p2, p0, Landroid/support/v4/app/Z;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Z;->j:Z

    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Z;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/Z;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Landroid/support/v4/app/Z;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/Z;->a(IZ)V

    return-object p0
.end method

.method public final b(I)Landroid/support/v4/app/Z;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Z;->f:I

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b(Z)Landroid/support/v4/app/Z;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/Z;->a(IZ)V

    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/Z;->p:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/Z;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
