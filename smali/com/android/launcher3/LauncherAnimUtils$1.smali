.class final Lcom/android/launcher3/LauncherAnimUtils$1;
.super Landroid/util/IntProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/LauncherAnimUtils$1;->a:I

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/LauncherAnimUtils$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/LauncherAnimUtils$1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAnimUtils$1;->a(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :goto_0
    iget p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_3
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_4
    iget p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :goto_2
    iget p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_6
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAnimUtils$1;->a(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/LauncherAnimUtils$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    packed-switch p0, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    :goto_2
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    return-void

    :pswitch_4
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    packed-switch p0, :pswitch_data_3

    goto :goto_4

    :pswitch_5
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :goto_4
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_5
    return-void

    :pswitch_6
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :pswitch_7
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :goto_6
    check-cast p1, Landroid/widget/TextView;

    packed-switch p0, :pswitch_data_4

    goto :goto_7

    :pswitch_8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :goto_7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method
