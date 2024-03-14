.class public final synthetic Lcom/android/launcher3/views/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/l;->a:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/l;->a:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-static {p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->a(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V

    return-void
.end method
