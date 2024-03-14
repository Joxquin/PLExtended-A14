.class public final synthetic Lcom/android/launcher3/views/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/ArrowTipView;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ArrowTipView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/j;->d:Lcom/android/launcher3/views/ArrowTipView;

    iput p2, p0, Lcom/android/launcher3/views/j;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/j;->d:Lcom/android/launcher3/views/ArrowTipView;

    iget p0, p0, Lcom/android/launcher3/views/j;->e:I

    invoke-static {v0, p0}, Lcom/android/launcher3/views/ArrowTipView;->b(Lcom/android/launcher3/views/ArrowTipView;I)V

    return-void
.end method
