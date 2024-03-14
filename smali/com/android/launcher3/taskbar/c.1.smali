.class public final synthetic Lcom/android/launcher3/taskbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/c;->a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/c;->b:Z

    iput p3, p0, Lcom/android/launcher3/taskbar/c;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/c;->a:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/c;->b:Z

    iget p0, p0, Lcom/android/launcher3/taskbar/c;->c:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->a(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;ZILjava/util/ArrayList;)V

    return-void
.end method
