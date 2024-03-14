.class public final synthetic Lcom/android/launcher3/views/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/views/p;->a:I

    iput-object p1, p0, Lcom/android/launcher3/views/p;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/p;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/views/p;->b:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    sget v0, Lcom/android/launcher3/views/FloatingIconView;->d:I

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/views/p;->b:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    :goto_0
    sget v0, Lcom/android/launcher3/views/FloatingIconView;->d:I

    return-object p0

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/views/p;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
