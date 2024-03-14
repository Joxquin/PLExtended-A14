.class public final synthetic Lcom/android/launcher3/taskbar/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

.field public final synthetic b:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic c:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/v0;->a:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/v0;->b:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/v0;->c:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/v0;->a:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/v0;->b:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/v0;->c:Lcom/android/launcher3/BubbleTextView;

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
