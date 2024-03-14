.class public final synthetic Lcom/android/launcher3/views/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/ArrowTipView;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/i;->d:Lcom/android/launcher3/views/ArrowTipView;

    iput p2, p0, Lcom/android/launcher3/views/i;->e:I

    iput p3, p0, Lcom/android/launcher3/views/i;->f:I

    iput p4, p0, Lcom/android/launcher3/views/i;->g:I

    iput p5, p0, Lcom/android/launcher3/views/i;->h:I

    iput p6, p0, Lcom/android/launcher3/views/i;->i:I

    iput p7, p0, Lcom/android/launcher3/views/i;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/views/i;->d:Lcom/android/launcher3/views/ArrowTipView;

    iget v1, p0, Lcom/android/launcher3/views/i;->e:I

    iget v2, p0, Lcom/android/launcher3/views/i;->f:I

    iget v3, p0, Lcom/android/launcher3/views/i;->g:I

    iget v4, p0, Lcom/android/launcher3/views/i;->h:I

    iget v5, p0, Lcom/android/launcher3/views/i;->i:I

    iget v6, p0, Lcom/android/launcher3/views/i;->j:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/views/ArrowTipView;->c(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V

    return-void
.end method
