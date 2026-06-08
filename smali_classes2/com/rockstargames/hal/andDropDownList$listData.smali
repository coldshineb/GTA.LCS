.class public Lcom/rockstargames/hal/andDropDownList$listData;
.super Ljava/lang/Object;
.source "andDropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "listData"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field label:Ljava/lang/String;

.field spin:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/rockstargames/hal/andDropDownList;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDropDownList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/rockstargames/hal/andDropDownList$listData;->this$0:Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/rockstargames/hal/andDropDownList;->GetSpinner()Landroid/widget/Spinner;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/andDropDownList$listData;->spin:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList$listData;->label:Ljava/lang/String;

    return-object v0
.end method
