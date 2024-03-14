.class public final synthetic Lcom/android/launcher3/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;II)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/util/j;->a:I

    iput-object p1, p0, Lcom/android/launcher3/util/j;->b:Lcom/android/launcher3/util/FlagOp;

    iput p2, p0, Lcom/android/launcher3/util/j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/util/j;->a:I

    iget v1, p0, Lcom/android/launcher3/util/j;->c:I

    iget-object p0, p0, Lcom/android/launcher3/util/j;->b:Lcom/android/launcher3/util/FlagOp;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p0

    or-int/2addr p0, v1

    return p0

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p0

    not-int p1, v1

    and-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
