.class public final synthetic LZ0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/b;->a:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LZ0/b;->a:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/String;)V

    return-void
.end method
