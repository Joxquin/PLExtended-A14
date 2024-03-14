.class public abstract Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private key:Ljava/lang/String;

.field private view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-object p0
.end method
