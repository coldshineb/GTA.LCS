.class Lcom/rockstargames/hal/andTextInput$1;
.super Ljava/lang/Object;
.source "andTextInput.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andTextInput;->setLicensePlateInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andTextInput;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andTextInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$1;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 209
    instance-of p4, p1, Landroid/text/SpannableStringBuilder;

    const/16 p5, 0x39

    const/16 p6, 0x5a

    const/16 v0, 0x30

    const/16 v1, 0x7a

    const/16 v2, 0x41

    const/4 v3, 0x0

    const/16 v4, 0x61

    if-eqz p4, :cond_6

    .line 211
    move-object p4, p1

    check-cast p4, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, p3, -0x1

    :goto_0
    if-lt v5, p2, :cond_4

    .line 213
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_0

    if-le v6, v1, :cond_3

    :cond_0
    if-lt v6, v2, :cond_1

    if-le v6, p6, :cond_3

    :cond_1
    if-lt v6, v0, :cond_2

    if-le v6, p5, :cond_3

    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 215
    invoke-virtual {p4, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 218
    :cond_4
    const-class p5, Landroid/text/style/CharacterStyle;

    invoke-virtual {p4, p2, p3, p5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/CharacterStyle;

    .line 219
    array-length p3, p2

    :goto_1
    if-ge v3, p3, :cond_5

    aget-object p5, p2, v3

    .line 220
    invoke-virtual {p4, p5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object p1

    .line 226
    :cond_6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_2
    if-ge p2, p3, :cond_b

    .line 228
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_7

    if-le v6, v1, :cond_9

    :cond_7
    if-lt v6, v2, :cond_8

    if-le v6, p6, :cond_9

    :cond_8
    if-lt v6, v0, :cond_a

    if-gt v6, p5, :cond_a

    .line 230
    :cond_9
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    move v5, v3

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    if-nez v5, :cond_d

    .line 240
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_d

    .line 241
    const-string p1, ""

    return-object p1

    .line 243
    :cond_d
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
