.class public final synthetic Lcom/android/launcher3/taskbar/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/l;->d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iput p2, p0, Lcom/android/launcher3/taskbar/l;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/l;->d:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    iget p0, p0, Lcom/android/launcher3/taskbar/l;->e:I

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->s(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V

    return-void
.end method
