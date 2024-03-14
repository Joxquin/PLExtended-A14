.class public final synthetic LL1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final synthetic e:LL1/w;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LL1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/e0;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput-object p2, p0, LL1/e0;->e:LL1/w;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    iget-object p1, p0, LL1/e0;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object p0, p0, LL1/e0;->e:LL1/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LL1/w;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_1

    iget-object p0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget-object p0, p0, LL1/o;->b:LL1/q;

    invoke-virtual {p0}, LL1/q;->c()V

    :cond_1
    :goto_0
    return v2
.end method
