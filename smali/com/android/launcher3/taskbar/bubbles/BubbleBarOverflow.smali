.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;
.super Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;
.source "SourceFile"


# instance fields
.field private view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Overflow"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;-><init>(Ljava/lang/String;Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleBarOverflow(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
