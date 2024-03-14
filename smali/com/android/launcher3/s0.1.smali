.class public final synthetic Lcom/android/launcher3/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/MultipageCellLayout;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[II)V
    .locals 0

    iput p8, p0, Lcom/android/launcher3/s0;->a:I

    iput-object p1, p0, Lcom/android/launcher3/s0;->b:Lcom/android/launcher3/MultipageCellLayout;

    iput p2, p0, Lcom/android/launcher3/s0;->c:I

    iput p3, p0, Lcom/android/launcher3/s0;->d:I

    iput p4, p0, Lcom/android/launcher3/s0;->e:I

    iput p5, p0, Lcom/android/launcher3/s0;->f:I

    iput-object p6, p0, Lcom/android/launcher3/s0;->g:Landroid/view/View;

    iput-object p7, p0, Lcom/android/launcher3/s0;->h:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/android/launcher3/s0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/s0;->b:Lcom/android/launcher3/MultipageCellLayout;

    iget v2, p0, Lcom/android/launcher3/s0;->c:I

    iget v3, p0, Lcom/android/launcher3/s0;->d:I

    iget v4, p0, Lcom/android/launcher3/s0;->e:I

    iget v5, p0, Lcom/android/launcher3/s0;->f:I

    iget-object v6, p0, Lcom/android/launcher3/s0;->g:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher3/s0;->h:[I

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/MultipageCellLayout;->b(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/s0;->b:Lcom/android/launcher3/MultipageCellLayout;

    iget v1, p0, Lcom/android/launcher3/s0;->c:I

    iget v2, p0, Lcom/android/launcher3/s0;->d:I

    iget v3, p0, Lcom/android/launcher3/s0;->e:I

    iget v4, p0, Lcom/android/launcher3/s0;->f:I

    iget-object v5, p0, Lcom/android/launcher3/s0;->g:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/s0;->h:[I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/MultipageCellLayout;->c(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
