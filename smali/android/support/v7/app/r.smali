.class final Landroid/support/v7/app/r;
.super Landroid/support/v7/app/q;


# instance fields
.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/q;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/r;->n:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/r;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/r;->n:Z

    return v0
.end method


# virtual methods
.method final a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/s;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/s;-><init>(Landroid/support/v7/app/r;Landroid/view/Window$Callback;)V

    return-object v0
.end method
