.class public final synthetic Lcom/android/quickstep/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/s1;->d:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/s1;->d:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    invoke-static {p0}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->x(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;)V

    return-void
.end method
