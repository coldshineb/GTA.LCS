.class final Lcom/rockstargames/hal/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, p3, -0x1

    :goto_0
    if-lt v1, p2, :cond_4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_3

    :cond_0
    if-lt v3, v7, :cond_1

    if-le v3, v8, :cond_3

    :cond_1
    if-lt v3, v5, :cond_2

    if-le v3, v6, :cond_3

    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_b

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge p2, p3, :cond_a

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_6

    const/16 v4, 0x7a

    if-le v3, v4, :cond_8

    :cond_6
    if-lt v3, v7, :cond_7

    if-le v3, v8, :cond_8

    :cond_7
    if-lt v3, v5, :cond_9

    if-gt v3, v6, :cond_9

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_c

    const/4 p1, 0x0

    :cond_b
    :goto_4
    return-object p1

    :cond_c
    if-nez v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method
