.class Lcom/rockstargames/hal/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockstargames/hal/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/rockstargames/hal/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockstargames/hal/c;->b:Ljava/lang/String;

    return-void
.end method
