.class final Lcom/android/launcher3/folder/PreviewBackground$1;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground$1;->a:I

    const-class p2, Ljava/lang/Integer;

    invoke-direct {p0, p2, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/folder/PreviewBackground;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher3/folder/PreviewBackground;->b(Lcom/android/launcher3/folder/PreviewBackground;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/folder/PreviewBackground;->a(Lcom/android/launcher3/folder/PreviewBackground;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Integer;)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/PreviewBackground;->d(Lcom/android/launcher3/folder/PreviewBackground;I)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/PreviewBackground;->c(Lcom/android/launcher3/folder/PreviewBackground;I)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground$1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground$1;->a(Lcom/android/launcher3/folder/PreviewBackground;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground$1;->a(Lcom/android/launcher3/folder/PreviewBackground;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground$1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/folder/PreviewBackground;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewBackground$1;->b(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Integer;)V

    return-void

    :goto_0
    check-cast p1, Lcom/android/launcher3/folder/PreviewBackground;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewBackground$1;->b(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Integer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
