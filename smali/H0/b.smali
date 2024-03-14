.class public final synthetic LH0/b;
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


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/b;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iput p2, p0, LH0/b;->b:I

    iput p3, p0, LH0/b;->c:I

    iput p4, p0, LH0/b;->d:I

    iput p5, p0, LH0/b;->e:I

    iput p6, p0, LH0/b;->f:I

    iput p7, p0, LH0/b;->g:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LH0/b;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iget v1, p0, LH0/b;->b:I

    iget v2, p0, LH0/b;->c:I

    iget v3, p0, LH0/b;->d:I

    iget v4, p0, LH0/b;->e:I

    iget v5, p0, LH0/b;->f:I

    iget v6, p0, LH0/b;->g:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->a(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method
