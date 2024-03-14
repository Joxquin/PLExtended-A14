.class public final synthetic LH0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/a;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iput p2, p0, LH0/a;->b:I

    iput p3, p0, LH0/a;->c:I

    iput p4, p0, LH0/a;->d:I

    iput p5, p0, LH0/a;->e:I

    iput-object p6, p0, LH0/a;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, LH0/a;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iget v1, p0, LH0/a;->b:I

    iget v2, p0, LH0/a;->c:I

    iget v3, p0, LH0/a;->d:I

    iget v4, p0, LH0/a;->e:I

    iget-object v5, p0, LH0/a;->f:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->b(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method
