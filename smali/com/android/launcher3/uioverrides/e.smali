.class public final synthetic Lcom/android/launcher3/uioverrides/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

.field public final synthetic b:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/e;->a:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/e;->b:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/e;->a:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/e;->b:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/e;->c:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->a(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    return-void
.end method
