.class public final synthetic LH0/c;
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

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:[I

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Z

.field public final synthetic k:Lcom/android/launcher3/CellLayout$ItemConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/c;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iput p2, p0, LH0/c;->b:I

    iput p3, p0, LH0/c;->c:I

    iput p4, p0, LH0/c;->d:I

    iput p5, p0, LH0/c;->e:I

    iput p6, p0, LH0/c;->f:I

    iput p7, p0, LH0/c;->g:I

    iput-object p8, p0, LH0/c;->h:[I

    iput-object p9, p0, LH0/c;->i:Landroid/view/View;

    iput-boolean p10, p0, LH0/c;->j:Z

    iput-object p11, p0, LH0/c;->k:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LH0/c;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iget v1, p0, LH0/c;->b:I

    iget v2, p0, LH0/c;->c:I

    iget v3, p0, LH0/c;->d:I

    iget v4, p0, LH0/c;->e:I

    iget v5, p0, LH0/c;->f:I

    iget v6, p0, LH0/c;->g:I

    iget-object v7, p0, LH0/c;->h:[I

    iget-object v8, p0, LH0/c;->i:Landroid/view/View;

    iget-boolean v9, p0, LH0/c;->j:Z

    iget-object v10, p0, LH0/c;->k:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->c(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method
