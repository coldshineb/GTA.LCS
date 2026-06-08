.class public final Landroid/support/v4/view/a/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/view/a/o;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/r;

    invoke-direct {v0}, Landroid/support/v4/view/a/r;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/n;->a:Landroid/support/v4/view/a/o;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/n;->a:Landroid/support/v4/view/a/o;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/n;->a:Landroid/support/v4/view/a/o;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/a/n;->a:Landroid/support/v4/view/a/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/a/o;->a(Landroid/support/v4/view/a/n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b()Landroid/support/v4/view/a/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/a/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Landroid/support/v4/view/a/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/n;->b:Ljava/lang/Object;

    return-object v0
.end method
