.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$nonTouchableInsetsComputer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$nonTouchableInsetsComputer$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$nonTouchableInsetsComputer$1;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$nonTouchableInsetsComputer$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$nonTouchableInsetsComputer$1;->INSTANCE:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$nonTouchableInsetsComputer$1;

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method
