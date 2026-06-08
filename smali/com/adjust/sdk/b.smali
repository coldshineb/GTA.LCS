.class final Lcom/adjust/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adjust/sdk/a;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/b;->a:Lcom/adjust/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/b;->a:Lcom/adjust/sdk/a;

    invoke-static {v0}, Lcom/adjust/sdk/a;->f(Lcom/adjust/sdk/a;)V

    return-void
.end method
