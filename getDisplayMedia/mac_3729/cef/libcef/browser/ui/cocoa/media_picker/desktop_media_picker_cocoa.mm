// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "libcef/browser/ui/cocoa/media_picker/desktop_media_picker_cocoa.h"

#include <utility>

#import "libcef/browser/ui/cocoa/media_picker/desktop_media_picker_controller.h"

namespace Cef{
DesktopMediaPickerCocoa::DesktopMediaPickerCocoa() {
}

DesktopMediaPickerCocoa::~DesktopMediaPickerCocoa() {
}

void DesktopMediaPickerCocoa::Show(
    const DesktopMediaPicker::Params& params,
    std::vector<std::unique_ptr<DesktopMediaList>> source_lists,
    const DoneCallback& done_callback) {
  controller_.reset([[CefDesktopMediaPickerController alloc]
      initWithSourceLists:std::move(source_lists)
                 callback:done_callback
                   params:params]);
  [controller_ showWindow:nil];
}

// static
std::unique_ptr<DesktopMediaPicker> DesktopMediaPicker::Create() {
  return std::unique_ptr<DesktopMediaPicker>(new DesktopMediaPickerCocoa());
}
}//namespace Cef
