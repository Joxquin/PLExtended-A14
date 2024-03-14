.class public final synthetic Lcom/android/systemui/shared/plugins/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

.field public final synthetic b:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/plugins/PluginInstance$Factory;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/d;->a:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/d;->b:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/d;->a:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/d;->b:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->a(Lcom/android/systemui/shared/plugins/PluginInstance$Factory;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
