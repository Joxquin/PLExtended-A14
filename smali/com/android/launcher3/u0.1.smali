.class public final synthetic Lcom/android/launcher3/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/MultipageCellLayout;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:[I

.field public final synthetic j:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/u0;->a:Lcom/android/launcher3/MultipageCellLayout;

    iput p2, p0, Lcom/android/launcher3/u0;->b:I

    iput p3, p0, Lcom/android/launcher3/u0;->c:I

    iput p4, p0, Lcom/android/launcher3/u0;->d:I

    iput p5, p0, Lcom/android/launcher3/u0;->e:I

    iput p6, p0, Lcom/android/launcher3/u0;->f:I

    iput p7, p0, Lcom/android/launcher3/u0;->g:I

    iput-boolean p8, p0, Lcom/android/launcher3/u0;->h:Z

    iput-object p9, p0, Lcom/android/launcher3/u0;->i:[I

    iput-object p10, p0, Lcom/android/launcher3/u0;->j:[I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/u0;->a:Lcom/android/launcher3/MultipageCellLayout;

    iget v1, p0, Lcom/android/launcher3/u0;->b:I

    iget v2, p0, Lcom/android/launcher3/u0;->c:I

    iget v3, p0, Lcom/android/launcher3/u0;->d:I

    iget v4, p0, Lcom/android/launcher3/u0;->e:I

    iget v5, p0, Lcom/android/launcher3/u0;->f:I

    iget v6, p0, Lcom/android/launcher3/u0;->g:I

    iget-boolean v7, p0, Lcom/android/launcher3/u0;->h:Z

    iget-object v8, p0, Lcom/android/launcher3/u0;->i:[I

    iget-object v9, p0, Lcom/android/launcher3/u0;->j:[I

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/MultipageCellLayout;->d(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method
