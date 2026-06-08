.class Lcom/rockstargames/hal/scroll/andScrollViewImpl$1;
.super Ljava/lang/Object;
.source "andScrollViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/scroll/andScrollViewImpl;->setToStartingPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/scroll/andScrollViewImpl;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/scroll/andScrollViewImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl$1;->this$0:Lcom/rockstargames/hal/scroll/andScrollViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl$1;->this$0:Lcom/rockstargames/hal/scroll/andScrollViewImpl;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->fullScroll(I)Z

    return-void
.end method
