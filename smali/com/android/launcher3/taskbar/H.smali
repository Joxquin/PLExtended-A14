.class public final synthetic Lcom/android/launcher3/taskbar/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/H;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/H;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->e(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method
