.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;
.super Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;
.source "SourceFile"


# instance fields
.field private appName:Ljava/lang/String;

.field private badge:Landroid/graphics/Bitmap;

.field private dotColor:I

.field private dotPath:Landroid/graphics/Path;

.field private icon:Landroid/graphics/Bitmap;

.field private info:Lcom/android/wm/shell/common/bubbles/d;

.field private view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/d;Lcom/android/launcher3/taskbar/bubbles/BubbleView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/graphics/Path;Ljava/lang/String;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/d;->d:Ljava/lang/String;

    const-string v1, "info.key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;-><init>(Ljava/lang/String;Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    iput-object p6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    iput-object p7, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    iget v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBadge()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    return p0
.end method

.method public final getDotPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getInfo()Lcom/android/wm/shell/common/bubbles/d;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    return-object p0
.end method

.method public final getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setBadge(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setDotColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    return-void
.end method

.method public final setDotPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setInfo(Lcom/android/wm/shell/common/bubbles/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/d;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    iget-object v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BubbleBarBubble(info="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", badge="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dotColor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dotPath="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
